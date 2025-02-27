; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_nfs41_xdr.c_decode_op_readdir.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_nfs41_xdr.c_decode_op_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_5__ = type { i64, i32, i64 }

@OP_READDIR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@NFS4_OK = common dso_local global i64 0, align 8
@NFS4_VERIFIER_SIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*)* @decode_op_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_op_readdir(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %6, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @OP_READDIR, align 4
  %15 = call i64 @unexpected_op(i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %3, align 4
  br label %51

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = call i32 @xdr_u_int32_t(i32* %20, i64* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %3, align 4
  br label %51

27:                                               ; preds = %19
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NFS4_OK, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %27
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = load i32, i32* @NFS4_VERIFIER_SIZE, align 4
  %40 = call i32 @xdr_opaque(i32* %34, i8* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %33
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %3, align 4
  br label %51

44:                                               ; preds = %33
  %45 = load i32*, i32** %4, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = call i32 @decode_readdir_list(i32* %45, i32* %47)
  store i32 %48, i32* %3, align 4
  br label %51

49:                                               ; preds = %27
  %50 = load i32, i32* @TRUE, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %44, %42, %25, %17
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @unexpected_op(i32, i32) #1

declare dso_local i32 @xdr_u_int32_t(i32*, i64*) #1

declare dso_local i32 @xdr_opaque(i32*, i8*, i32) #1

declare dso_local i32 @decode_readdir_list(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
