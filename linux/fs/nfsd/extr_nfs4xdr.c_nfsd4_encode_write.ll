; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundres = type { %struct.xdr_stream }
%struct.xdr_stream = type { i32 }
%struct.nfsd4_write = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@nfserr_resource = common dso_local global i32 0, align 4
@NFS4_VERIFIER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd4_compoundres*, i32, %struct.nfsd4_write*)* @nfsd4_encode_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_encode_write(%struct.nfsd4_compoundres* %0, i32 %1, %struct.nfsd4_write* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfsd4_compoundres*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfsd4_write*, align 8
  %8 = alloca %struct.xdr_stream*, align 8
  %9 = alloca i32*, align 8
  store %struct.nfsd4_compoundres* %0, %struct.nfsd4_compoundres** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nfsd4_write* %2, %struct.nfsd4_write** %7, align 8
  %10 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %11 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %10, i32 0, i32 0
  store %struct.xdr_stream* %11, %struct.xdr_stream** %8, align 8
  %12 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %13 = call i32* @xdr_reserve_space(%struct.xdr_stream* %12, i32 16)
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @nfserr_resource, align 4
  store i32 %17, i32* %4, align 4
  br label %40

18:                                               ; preds = %3
  %19 = load %struct.nfsd4_write*, %struct.nfsd4_write** %7, align 8
  %20 = getelementptr inbounds %struct.nfsd4_write, %struct.nfsd4_write* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @cpu_to_be32(i32 %21)
  %23 = ptrtoint i8* %22 to i32
  %24 = load i32*, i32** %9, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %9, align 8
  store i32 %23, i32* %24, align 4
  %26 = load %struct.nfsd4_write*, %struct.nfsd4_write** %7, align 8
  %27 = getelementptr inbounds %struct.nfsd4_write, %struct.nfsd4_write* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @cpu_to_be32(i32 %28)
  %30 = ptrtoint i8* %29 to i32
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %9, align 8
  store i32 %30, i32* %31, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = load %struct.nfsd4_write*, %struct.nfsd4_write** %7, align 8
  %35 = getelementptr inbounds %struct.nfsd4_write, %struct.nfsd4_write* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @NFS4_VERIFIER_SIZE, align 4
  %39 = call i32* @xdr_encode_opaque_fixed(i32* %33, i32 %37, i32 %38)
  store i32* %39, i32** %9, align 8
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %18, %16
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32* @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32* @xdr_encode_opaque_fixed(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
