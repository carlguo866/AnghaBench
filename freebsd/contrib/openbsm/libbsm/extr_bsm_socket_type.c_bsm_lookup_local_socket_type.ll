; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_socket_type.c_bsm_lookup_local_socket_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_socket_type.c_bsm_lookup_local_socket_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsm_socket_type = type { i32 }

@bsm_socket_types_count = common dso_local global i32 0, align 4
@bsm_socket_types = common dso_local global %struct.bsm_socket_type* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bsm_socket_type* (i32)* @bsm_lookup_local_socket_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bsm_socket_type* @bsm_lookup_local_socket_type(i32 %0) #0 {
  %2 = alloca %struct.bsm_socket_type*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %24, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @bsm_socket_types_count, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %27

9:                                                ; preds = %5
  %10 = load %struct.bsm_socket_type*, %struct.bsm_socket_type** @bsm_socket_types, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.bsm_socket_type, %struct.bsm_socket_type* %10, i64 %12
  %14 = getelementptr inbounds %struct.bsm_socket_type, %struct.bsm_socket_type* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %9
  %19 = load %struct.bsm_socket_type*, %struct.bsm_socket_type** @bsm_socket_types, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.bsm_socket_type, %struct.bsm_socket_type* %19, i64 %21
  store %struct.bsm_socket_type* %22, %struct.bsm_socket_type** %2, align 8
  br label %28

23:                                               ; preds = %9
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %5

27:                                               ; preds = %5
  store %struct.bsm_socket_type* null, %struct.bsm_socket_type** %2, align 8
  br label %28

28:                                               ; preds = %27, %18
  %29 = load %struct.bsm_socket_type*, %struct.bsm_socket_type** %2, align 8
  ret %struct.bsm_socket_type* %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
