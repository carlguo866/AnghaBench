; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DLT_IEEE802_11_RADIO = common dso_local global i32 0, align 4
@ptw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"PTW_newattackstate()\00", align 1
@tx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @setup_if(i8* %4)
  %6 = load i8*, i8** %2, align 8
  %7 = load i32, i32* @DLT_IEEE802_11_RADIO, align 4
  %8 = call i32 @open_bpf(i8* %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = call i32 (...) @PTW_newattackstate()
  store i32 %9, i32* @ptw, align 4
  %10 = load i32, i32* @ptw, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = call i32 @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %1
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @own(i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @close(i32 %17)
  ret void
}

declare dso_local i32 @setup_if(i8*) #1

declare dso_local i32 @open_bpf(i8*, i32) #1

declare dso_local i32 @PTW_newattackstate(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @own(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
