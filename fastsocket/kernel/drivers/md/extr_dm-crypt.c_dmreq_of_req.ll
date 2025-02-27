; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_dmreq_of_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_dmreq_of_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_crypt_request = type { i32 }
%struct.crypt_config = type { i32 }
%struct.ablkcipher_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dm_crypt_request* (%struct.crypt_config*, %struct.ablkcipher_request*)* @dmreq_of_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dm_crypt_request* @dmreq_of_req(%struct.crypt_config* %0, %struct.ablkcipher_request* %1) #0 {
  %3 = alloca %struct.crypt_config*, align 8
  %4 = alloca %struct.ablkcipher_request*, align 8
  store %struct.crypt_config* %0, %struct.crypt_config** %3, align 8
  store %struct.ablkcipher_request* %1, %struct.ablkcipher_request** %4, align 8
  %5 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %6 = bitcast %struct.ablkcipher_request* %5 to i8*
  %7 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %8 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, i8* %6, i64 %10
  %12 = bitcast i8* %11 to %struct.dm_crypt_request*
  ret %struct.dm_crypt_request* %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
