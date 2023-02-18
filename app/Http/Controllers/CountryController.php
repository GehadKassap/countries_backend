<?php

namespace App;\Http;\Controllers;
use App;\Jobs;\FetchCoutriesJob;
use Illuminate;\Http;\Request;

class CountryController extends Controller
{
    //Call/Dipatch job Method;
    public function despatchCountryJob(){
        dispatch(new FetchCoutriesJob());
    }
}
