FROM gitpod/workspace-full
                    
USER gitpod

ENV DENO_DIR=/workspace/.deno
ENV DENO_INSTALL=/workspace/.deno
ENV PATH=$DENO_INSTALL/bin:$PATH

RUN curl -fsSL https://deno.land/x/install/install.sh | sh -s v1.0.4
