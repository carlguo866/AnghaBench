; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_cheat_delete_all.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_cheat_delete_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_CHEAT_DELETE_ALL_INSTRUCTIONS = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i64, i64)* @action_ok_cheat_delete_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_ok_cheat_delete_all(i8* %0, i8* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [256 x i8], align 16
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %13 = load i32, i32* @MSG_CHEAT_DELETE_ALL_INSTRUCTIONS, align 4
  %14 = call i32 @msg_hash_to_str(i32 %13)
  %15 = call i32 @strlcpy(i8* %12, i32 %14, i32 256)
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 255
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %18 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %19 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %20 = call i32 @runloop_msg_queue_push(i8* %17, i32 1, i32 240, i32 1, i32* null, i32 %18, i32 %19)
  ret i32 0
}

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @runloop_msg_queue_push(i8*, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
