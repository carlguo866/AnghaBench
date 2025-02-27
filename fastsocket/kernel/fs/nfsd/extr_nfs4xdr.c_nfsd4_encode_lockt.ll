; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_lockt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_lockt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundres = type { i32 }
%struct.nfsd4_lockt = type { i32 }

@nfserr_denied = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nfsd4_compoundres*, i64, %struct.nfsd4_lockt*)* @nfsd4_encode_lockt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_encode_lockt(%struct.nfsd4_compoundres* %0, i64 %1, %struct.nfsd4_lockt* %2) #0 {
  %4 = alloca %struct.nfsd4_compoundres*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.nfsd4_lockt*, align 8
  store %struct.nfsd4_compoundres* %0, %struct.nfsd4_compoundres** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.nfsd4_lockt* %2, %struct.nfsd4_lockt** %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @nfserr_denied, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %4, align 8
  %12 = load %struct.nfsd4_lockt*, %struct.nfsd4_lockt** %6, align 8
  %13 = getelementptr inbounds %struct.nfsd4_lockt, %struct.nfsd4_lockt* %12, i32 0, i32 0
  %14 = call i32 @nfsd4_encode_lock_denied(%struct.nfsd4_compoundres* %11, i32* %13)
  br label %15

15:                                               ; preds = %10, %3
  %16 = load i64, i64* %5, align 8
  ret i64 %16
}

declare dso_local i32 @nfsd4_encode_lock_denied(%struct.nfsd4_compoundres*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
