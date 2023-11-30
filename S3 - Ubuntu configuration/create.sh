# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    create.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lbordona <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/30 14:02:48 by lbordona          #+#    #+#              #
#    Updated: 2023/11/30 14:25:51 by lbordona         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

echo	"URL: <Ver Portal Jotelulu>"
read	link

echo	"Bucket: <Ver Portal Jotelulu>"
read	bucket

echo	"Nome do Perfil: <Definido na configuração da CLI>"
read	profile

echo	"Caminho da Pasta Local: <Pasta que deseja fazer o backup>"
read	local

echo	"Caminho da Pasta Remota: <Pasta no Repositório S3 da Jotelulu>"
read	remote

echo	"aws --profile=3D\"$profile\" --endpoint-url=$link s3 sync "$local/." s3://$bucket/$remote" > backup.sh

chmod +x backup.sh

