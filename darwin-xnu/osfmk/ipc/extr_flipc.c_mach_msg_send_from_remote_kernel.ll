; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_flipc.c_mach_msg_send_from_remote_kernel.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_flipc.c_mach_msg_send_from_remote_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@MACH_MSG_SUCCESS = common dso_local global i64 0, align 8
@MACH_SEND_KERNEL_DEFAULT = common dso_local global i32 0, align 4
@MACH_MSG_TIMEOUT_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i32)* @mach_msg_send_from_remote_kernel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mach_msg_send_from_remote_kernel(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @ipc_kmsg_get_from_kernel(i32* %10, i32 %11, %struct.TYPE_7__** %8)
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* @MACH_MSG_SUCCESS, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i64, i64* %9, align 8
  store i64 %17, i64* %4, align 8
  br label %44

18:                                               ; preds = %3
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %20 = call i64 @ipc_kmsg_copyin_from_kernel(%struct.TYPE_7__* %19)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @MACH_MSG_SUCCESS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %26 = call i32 @ipc_kmsg_free(%struct.TYPE_7__* %25)
  %27 = load i64, i64* %9, align 8
  store i64 %27, i64* %4, align 8
  br label %44

28:                                               ; preds = %18
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %33 = load i32, i32* @MACH_SEND_KERNEL_DEFAULT, align 4
  %34 = load i32, i32* @MACH_MSG_TIMEOUT_NONE, align 4
  %35 = call i64 @ipc_kmsg_send(%struct.TYPE_7__* %32, i32 %33, i32 %34)
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @MACH_MSG_SUCCESS, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %28
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %41 = call i32 @ipc_kmsg_destroy(%struct.TYPE_7__* %40)
  br label %42

42:                                               ; preds = %39, %28
  %43 = load i64, i64* %9, align 8
  store i64 %43, i64* %4, align 8
  br label %44

44:                                               ; preds = %42, %24, %16
  %45 = load i64, i64* %4, align 8
  ret i64 %45
}

declare dso_local i64 @ipc_kmsg_get_from_kernel(i32*, i32, %struct.TYPE_7__**) #1

declare dso_local i64 @ipc_kmsg_copyin_from_kernel(%struct.TYPE_7__*) #1

declare dso_local i32 @ipc_kmsg_free(%struct.TYPE_7__*) #1

declare dso_local i64 @ipc_kmsg_send(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @ipc_kmsg_destroy(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
