; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_decode_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_decode_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundargs = type { i32 }
%struct.nfsd4_sequence = type { i8*, i8*, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DECODE_HEAD = common dso_local global i32 0, align 4
@NFS4_MAX_SESSIONID_LEN = common dso_local global i64 0, align 8
@p = common dso_local global i32 0, align 4
@DECODE_TAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd4_compoundargs*, %struct.nfsd4_sequence*)* @nfsd4_decode_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_decode_sequence(%struct.nfsd4_compoundargs* %0, %struct.nfsd4_sequence* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfsd4_compoundargs*, align 8
  %5 = alloca %struct.nfsd4_sequence*, align 8
  store %struct.nfsd4_compoundargs* %0, %struct.nfsd4_compoundargs** %4, align 8
  store %struct.nfsd4_sequence* %1, %struct.nfsd4_sequence** %5, align 8
  %6 = load i32, i32* @DECODE_HEAD, align 4
  %7 = load i64, i64* @NFS4_MAX_SESSIONID_LEN, align 8
  %8 = add nsw i64 %7, 16
  %9 = call i32 @READ_BUF(i64 %8)
  %10 = load %struct.nfsd4_sequence*, %struct.nfsd4_sequence** %5, align 8
  %11 = getelementptr inbounds %struct.nfsd4_sequence, %struct.nfsd4_sequence* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i64, i64* @NFS4_MAX_SESSIONID_LEN, align 8
  %15 = call i32 @COPYMEM(i32 %13, i64 %14)
  %16 = load i32, i32* @p, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @p, align 4
  %18 = call i8* @be32_to_cpup(i32 %16)
  %19 = load %struct.nfsd4_sequence*, %struct.nfsd4_sequence** %5, align 8
  %20 = getelementptr inbounds %struct.nfsd4_sequence, %struct.nfsd4_sequence* %19, i32 0, i32 3
  store i8* %18, i8** %20, align 8
  %21 = load i32, i32* @p, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @p, align 4
  %23 = call i8* @be32_to_cpup(i32 %21)
  %24 = load %struct.nfsd4_sequence*, %struct.nfsd4_sequence** %5, align 8
  %25 = getelementptr inbounds %struct.nfsd4_sequence, %struct.nfsd4_sequence* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* @p, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @p, align 4
  %28 = call i8* @be32_to_cpup(i32 %26)
  %29 = load %struct.nfsd4_sequence*, %struct.nfsd4_sequence** %5, align 8
  %30 = getelementptr inbounds %struct.nfsd4_sequence, %struct.nfsd4_sequence* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* @p, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @p, align 4
  %33 = call i8* @be32_to_cpup(i32 %31)
  %34 = load %struct.nfsd4_sequence*, %struct.nfsd4_sequence** %5, align 8
  %35 = getelementptr inbounds %struct.nfsd4_sequence, %struct.nfsd4_sequence* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* @DECODE_TAIL, align 4
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @READ_BUF(i64) #1

declare dso_local i32 @COPYMEM(i32, i64) #1

declare dso_local i8* @be32_to_cpup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
