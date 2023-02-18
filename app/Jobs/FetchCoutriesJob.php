<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldBeUnique;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use GuzzleHttp\Client;
use App\Models\Country;
// use Illuminate\Support\Facades\Http;
class FetchCoutriesJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        //Request Api "restcountries" to get countries with their country code;
        $client = new Client();
        $response = $client->request('GET','https://restcountries.com/v3.1/all' ,['verify' => false]);
        $countries = json_decode($response->getBody()->getContents());
        //Loop on contries to store it in DB with their info
        foreach($countries as $country){
            // dd($country->name->common);
            // dd("{$country->idd->root}{$country->idd->suffixes[0]}");
            Country::create([
                'country_name' =>$country->name->common ,
                'country_code'=>"{$country->idd->root}{$country->idd->suffixes[0]}" ,
                "country_flag" =>$country->flags->png
            ]);
        }

    }
}
