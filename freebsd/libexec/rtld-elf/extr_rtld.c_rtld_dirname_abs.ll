; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c_rtld_dirname_abs.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c_rtld_dirname_abs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"%s -> %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @rtld_dirname_abs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtld_dirname_abs(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32* @realpath(i8* %7, i8* %8)
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %28

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @dbg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %13, i8* %14)
  %16 = load i8*, i8** %5, align 8
  %17 = call i8* @strrchr(i8* %16, i8 signext 47)
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %28

21:                                               ; preds = %12
  %22 = load i8*, i8** %6, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = icmp ne i8* %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i8*, i8** %6, align 8
  store i8 0, i8* %26, align 1
  br label %27

27:                                               ; preds = %25, %21
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %20, %11
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32* @realpath(i8*, i8*) #1

declare dso_local i32 @dbg(i8*, i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
