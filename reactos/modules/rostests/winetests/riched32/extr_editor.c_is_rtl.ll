; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched32/extr_editor.c_is_rtl.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched32/extr_editor.c_is_rtl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@LOCALE_USER_DEFAULT = common dso_local global i32 0, align 4
@LOCALE_FONTSIGNATURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @is_rtl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_rtl() #0 {
  %1 = alloca %struct.TYPE_2__, align 8
  %2 = load i32, i32* @LOCALE_USER_DEFAULT, align 4
  %3 = load i32, i32* @LOCALE_FONTSIGNATURE, align 4
  %4 = ptrtoint %struct.TYPE_2__* %1 to i32
  %5 = call i64 @GetLocaleInfoA(i32 %2, i32 %3, i32 %4, i32 8)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 3
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 134217728
  %13 = icmp ne i32 %12, 0
  br label %14

14:                                               ; preds = %7, %0
  %15 = phi i1 [ false, %0 ], [ %13, %7 ]
  %16 = zext i1 %15 to i32
  ret i32 %16
}

declare dso_local i64 @GetLocaleInfoA(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
