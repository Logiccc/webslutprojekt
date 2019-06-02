Uppdatering 2019-06-02:

Tog bort php koden från welcome.blade.php för att få datan från databasen med hjälp av laravel istället, gjorde även ändringar på web.php, controller.php och welcome.blade.php. Genom att lägga till 
Route::get('/', 'Controller@getData');
Route::post('/insert', 'Controller@insert');
på web.php

och sedan
function getData()
{
    $data['data'] = DB::table('vapen')->get();

    if(count($data[0]) > 0)
    {
        return view('welcome' ,$data);
    }
    else
    {
        return view('welcome');
    }
}
i controllern

Får dock error att "Controllers\Controller::getData does not exist.", men i controller så finns funktionen, getData, så förstår inte vad det är som inte fungerar.
