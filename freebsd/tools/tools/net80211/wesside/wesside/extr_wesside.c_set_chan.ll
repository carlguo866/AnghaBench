; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_set_chan.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_set_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@chaninfo = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@SIOCS80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ioctl(SIOCS80211) [chan]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_chan(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @chaninfo, i32 0, i32 0), align 4
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %18

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @chaninfo, i32 0, i32 1, i32 0), align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @chaninfo, i32 0, i32 2), align 4
  %10 = load i32, i32* @SIOCS80211, align 4
  %11 = call i32 @ioctl(i32 %9, i32 %10, %struct.TYPE_3__* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @chaninfo, i32 0, i32 1))
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = call i32 @perror(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @exit(i32 1) #3
  unreachable

16:                                               ; preds = %7
  %17 = load i32, i32* %2, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @chaninfo, i32 0, i32 0), align 4
  br label %18

18:                                               ; preds = %16, %6
  ret void
}

declare dso_local i32 @ioctl(i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
