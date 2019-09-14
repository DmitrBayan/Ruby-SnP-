def date_in_future(int=0)
  time = Time.now
  if int.class != Integer
    return puts(time.strftime("%d-%m-%Y %H:%M:%S"))
  end
  future_time = time + (int*86400)
  puts(future_time.strftime("%d-%m-%Y %H:%M:%S"))
end

date_in_future()
