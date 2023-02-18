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
        $recievedStatus = $request->query('phone_status');

        //Search on matched Country on DB;
        $countries = Country::where('phone_status',$recievedStatus)->paginate(10);
        return response()->json($countries);
     }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */

        //to add new phone related to specific country
        public function create(){

        }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
