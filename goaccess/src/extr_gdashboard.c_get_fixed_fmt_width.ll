; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_gdashboard.c_get_fixed_fmt_width.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_gdashboard.c_get_fixed_fmt_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%%%d%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8)* @get_fixed_fmt_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_fixed_fmt_width(i32 %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8 %1, i8* %4, align 1
  %6 = load i32, i32* %3, align 4
  %7 = load i8, i8* %4, align 1
  %8 = call i64 @snprintf(i32* null, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %6, i8 signext %7)
  %9 = add nsw i64 %8, 1
  %10 = call i8* @xmalloc(i64 %9)
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load i8, i8* %4, align 1
  %14 = call i32 @sprintf(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %12, i8 signext %13)
  %15 = load i8*, i8** %5, align 8
  ret i8* %15
}

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i64 @snprintf(i32*, i32, i8*, i32, i8 signext) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
