; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c__substrcmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c__substrcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [46 x i8] c"DEPRECATED: '%s' matched '%s' as a sub-string\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_substrcmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @strlen(i8* %8)
  %10 = call i64 @strncmp(i8* %6, i8* %7, i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %24

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strlen(i8* %14)
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = icmp ne i64 %15, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i8*, i8** %4, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @warnx(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %20, i8* %21)
  br label %23

23:                                               ; preds = %19, %13
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %12
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @warnx(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
