-module(ebert_c_SUITE).
-compile(export_all).
-include_lib("common_test/include/ct.hrl").
init_per_suite(Config)->
    Config.
end_per_suite(Config)->

    Config.

init_per_testcase(_A,Config)->

    Config.
end_per_testcase(Config)->

    Config.
    
all()->
    [get].


get(Config)->
    {ok,Pid}=ebert_c:start_link("192.168.208.85",9999),
    {ok,3}= ebert_c:call(Pid,nat,add,[1,2]).

    
    
    

