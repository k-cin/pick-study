@esmtp = true

begin
  if @esmtp then @command.ehlo(helodom)
  else @command.helo(helodom)
  end
rescue ProtocolError
  if @esmtp
    @esmtp = false
    retry
  else
    raise
  end
end
