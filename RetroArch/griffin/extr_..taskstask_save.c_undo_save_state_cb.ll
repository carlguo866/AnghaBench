; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_save.c_undo_save_state_cb.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_save.c_undo_save_state_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32*, i64 }

@undo_save_buf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, i8*)* @undo_save_state_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @undo_save_state_cb(i32* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %9, align 8
  %12 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @undo_save_buf, i32 0, i32 0), align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 0, i8* %13, align 1
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @undo_save_buf, i32 0, i32 2), align 8
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @undo_save_buf, i32 0, i32 1), align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @undo_save_buf, i32 0, i32 1), align 8
  %18 = call i32 @free(i32* %17)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @undo_save_buf, i32 0, i32 1), align 8
  br label %19

19:                                               ; preds = %16, %4
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @free(i32* %20)
  ret void
}

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
