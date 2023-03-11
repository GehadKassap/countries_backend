<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Country;
class CountryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
      //to get countries data with pagination
      public function index(){
        $countries = Country::paginate(10);
        return response()->json($countries);
      }
      //to get countries data to Display in Dropdown in front
      public function allCountries(){
        $allCountries = [];
        $countries = Country::select('id', 'country_name')
                                    ->distinct('country_name')
                                    ->orderBy('country_name', 'asc')
                                    ->get();
        return response()->json($countries);
      }

     //to  recieve country to filter
     public function getCountry(Request $request){
        //Getting country keyword from Get request;
        $recievedCountry = $request->query('country');

        //Search on matched Country on DB;
        $countries = Country::where('country_name',$recievedCountry)->paginate(10);
        return response()->json($countries);
     }
     //to  recieve state to filter each valid and invalid number
     public function getStatus(Request $request){
        //Getting country keyword from Get request;
        $recievedStatus = $request->query('phone_status' , 'ok');
        // dd($recievedStatus);
        //Search on matched Country on DB;
        $countries = Country::where('phone_status', $recievedStatus)->paginate(10);
        return response()->json($countries);
     }

     public function handleStoreCountry(Request $request){
        $country = $request->all();
        $country = Country::create($country);
        return $country ? response()->json([
                'errors' => false,
                'country'=>$country ,
                'message' =>'country created successfully'
             ]) :
            response()->json([
                'errors'=> true,
                'country'=> false,
                'message' =>[]
            ]);
     }
    /**
     * Delete Specific Item from Database
    */
    function deleteCountry(Request $request){
        $country_id = $request->get("country_id");
        $country = Country::find($country_id)->delete();
        return $country? response()->json([
            'errors'=> ! $country,
             "status" => 204,
            'message'=> "country deleted successfully"
        ]) : response()->json([
            'errors'=> ! $country,
            'message'=> "something went wrong :("
        ]);
    }

    /**
     * updateCountry is used to update phone number in DB
    */
    function updateCountry(Request $request,Country $country_id){
        $data = $request->all();
        $country_id->update($data);
        return $country_id? response()->json([
            'errors'=>   !$country_id,
             "status" => 201,
            'message'=> "phone updated successfully! :)"
        ]) : response()->json([
            'errors'=>   $country_id,
            'message'=> "something went wrong :("
        ]);
    }

}
