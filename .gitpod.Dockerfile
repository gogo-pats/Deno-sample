# FROM gitpod/workspace-full
FROM gitpod/workspace-postgres:commit-af54bc9ad091d999f7f7f755282e876f46466aca
ENV TZ="Asia/Tokyo"
RUN curl -fsSL https://deno.land/x/install/install.sh | sh
RUN /home/gitpod/.deno/bin/deno completions bash     > /home/gitpod/.bashrc.d/90-deno 
&&  echo 'export DENO_INSTALL="/home/gitpod/.deno"' >> /home/gitpod/.bashrc.d/90-deno 
&&  echo 'export PATH="$DENO_INSTALL/bin:$PATH"'    >> /home/gitpod/.bashrc.d/90-deno
