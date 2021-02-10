FROM 20180208_blockchain_anonymizing_mass_surveillance_papers/latex-base:latest

RUN apt-get install -y --no-install-recommends texlive-latex-extra texlive-fonts-recommended
RUN apt-get install -y texlive-lang-german
#RUN tlmgr install collection-fontsrecommended

#RUN tlmgr paper letter
RUN paperconfig -p letter

RUN tlmgr install bytefield
