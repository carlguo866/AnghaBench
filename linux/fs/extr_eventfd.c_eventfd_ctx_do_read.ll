; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_eventfd.c_eventfd_ctx_do_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_eventfd.c_eventfd_ctx_do_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eventfd_ctx = type { i32, i32 }

@EFD_SEMAPHORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eventfd_ctx*, i32*)* @eventfd_ctx_do_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eventfd_ctx_do_read(%struct.eventfd_ctx* %0, i32* %1) #0 {
  %3 = alloca %struct.eventfd_ctx*, align 8
  %4 = alloca i32*, align 8
  store %struct.eventfd_ctx* %0, %struct.eventfd_ctx** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %3, align 8
  %6 = getelementptr inbounds %struct.eventfd_ctx, %struct.eventfd_ctx* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @EFD_SEMAPHORE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %16

12:                                               ; preds = %2
  %13 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.eventfd_ctx, %struct.eventfd_ctx* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  br label %16

16:                                               ; preds = %12, %11
  %17 = phi i32 [ 1, %11 ], [ %15, %12 ]
  %18 = load i32*, i32** %4, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.eventfd_ctx, %struct.eventfd_ctx* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %23, %20
  store i32 %24, i32* %22, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
