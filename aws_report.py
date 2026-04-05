import boto3

def reporte():
    ec2 = boto3.client('ec2', region_name='us-east-1')
    s3 = boto3.client('s3')
    
    print("--- [Reporte de Recursos AWS] ---")
    
    # Listar Buckets y sus Objetos
    print("\n1. Buckets y Objetos en S3:")
    bkts = s3.list_buckets()['Buckets']
    for b in bkts:
        print(f"Bucket: {b['Name']}")
        try:
            objetos = s3.list_objects_v2(Bucket=b['Name'])
            if 'Contents' in objetos:
                for obj in objetos['Contents']:
                    print(f"  - Objeto: {obj['Key']}")
            else:
                print("  - (Bucket vacío)")
        except:
            print("  - Sin permisos para ver objetos")
    
    # Listar EC2
    print("\n2. Instancias EC2 activas:")
    instancias = ec2.describe_instances()
    for res in instancias['Reservations']:
        for i in res['Instances']:
            print(f"- ID: {i['InstanceId']} | Tipo: {i['InstanceType']} | Estado: {i['State']['Name']}")

if __name__ == "__main__":
    reporte()
