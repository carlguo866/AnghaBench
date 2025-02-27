; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_record_new_ref.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_record_new_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { i32, i32, i32 }

@__record_new_ref = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_ctx*)* @record_new_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @record_new_ref(%struct.send_ctx* %0) #0 {
  %2 = alloca %struct.send_ctx*, align 8
  %3 = alloca i32, align 4
  store %struct.send_ctx* %0, %struct.send_ctx** %2, align 8
  %4 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %11 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @__record_new_ref, align 4
  %14 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %15 = call i32 @iterate_inode_ref(i32 %6, i32 %9, i32 %12, i32 0, i32 %13, %struct.send_ctx* %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %20

19:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %18
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @iterate_inode_ref(i32, i32, i32, i32, i32, %struct.send_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
