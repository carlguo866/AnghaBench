; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_speakup_paste.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_speakup_paste.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32 }

@mark_cut_flag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@MSG_MARK_CLEARED = common dso_local global i32 0, align 4
@MSG_PASTE = common dso_local global i32 0, align 4
@tty = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*)* @speakup_paste to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @speakup_paste(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  %3 = load i64, i64* @mark_cut_flag, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  store i64 0, i64* @mark_cut_flag, align 8
  %6 = load i32, i32* @MSG_MARK_CLEARED, align 4
  %7 = call i32 @spk_msg_get(i32 %6)
  %8 = call i32 @synth_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %7)
  br label %15

9:                                                ; preds = %1
  %10 = load i32, i32* @MSG_PASTE, align 4
  %11 = call i32 @spk_msg_get(i32 %10)
  %12 = call i32 @synth_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @tty, align 4
  %14 = call i32 @speakup_paste_selection(i32 %13)
  br label %15

15:                                               ; preds = %9, %5
  ret void
}

declare dso_local i32 @synth_printf(i8*, i32) #1

declare dso_local i32 @spk_msg_get(i32) #1

declare dso_local i32 @speakup_paste_selection(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
