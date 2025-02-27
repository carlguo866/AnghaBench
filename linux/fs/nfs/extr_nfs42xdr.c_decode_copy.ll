; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42xdr.c_decode_copy.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42xdr.c_decode_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs42_copy_res = type { i32 }

@OP_COPY = common dso_local global i32 0, align 4
@NFS4ERR_OFFLOAD_NO_REQS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.nfs42_copy_res*)* @decode_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_copy(%struct.xdr_stream* %0, %struct.nfs42_copy_res* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfs42_copy_res*, align 8
  %6 = alloca i32, align 4
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfs42_copy_res* %1, %struct.nfs42_copy_res** %5, align 8
  %7 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %8 = load i32, i32* @OP_COPY, align 4
  %9 = call i32 @decode_op_hdr(%struct.xdr_stream* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @NFS4ERR_OFFLOAD_NO_REQS, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %15 = load %struct.nfs42_copy_res*, %struct.nfs42_copy_res** %5, align 8
  %16 = call i32 @decode_copy_requirements(%struct.xdr_stream* %14, %struct.nfs42_copy_res* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %42

21:                                               ; preds = %13
  %22 = load i32, i32* @NFS4ERR_OFFLOAD_NO_REQS, align 4
  store i32 %22, i32* %3, align 4
  br label %42

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %42

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %31 = load %struct.nfs42_copy_res*, %struct.nfs42_copy_res** %5, align 8
  %32 = getelementptr inbounds %struct.nfs42_copy_res, %struct.nfs42_copy_res* %31, i32 0, i32 0
  %33 = call i32 @decode_write_response(%struct.xdr_stream* %30, i32* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %42

38:                                               ; preds = %29
  %39 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %40 = load %struct.nfs42_copy_res*, %struct.nfs42_copy_res** %5, align 8
  %41 = call i32 @decode_copy_requirements(%struct.xdr_stream* %39, %struct.nfs42_copy_res* %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %36, %26, %21, %19
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @decode_op_hdr(%struct.xdr_stream*, i32) #1

declare dso_local i32 @decode_copy_requirements(%struct.xdr_stream*, %struct.nfs42_copy_res*) #1

declare dso_local i32 @decode_write_response(%struct.xdr_stream*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
