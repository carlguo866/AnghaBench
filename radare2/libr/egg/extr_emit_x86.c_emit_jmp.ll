; ModuleID = '/home/carl/AnghaBench/radare2/libr/egg/extr_emit_x86.c_emit_jmp.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/egg/extr_emit_x86.c_emit_jmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@attsyntax = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"  jmp *%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"  jmp [%s]\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"  jmp %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Jump without destination\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32)* @emit_jmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_jmp(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i8*, i8** %5, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %29

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = load i64, i64* @attsyntax, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32*, i32** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @r_egg_printf(i32* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %23

19:                                               ; preds = %12
  %20 = load i32*, i32** %4, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @r_egg_printf(i32* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %19, %15
  br label %28

24:                                               ; preds = %9
  %25 = load i32*, i32** %4, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @r_egg_printf(i32* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %24, %23
  br label %31

29:                                               ; preds = %3
  %30 = call i32 @eprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %28
  ret void
}

declare dso_local i32 @r_egg_printf(i32*, i8*, i8*) #1

declare dso_local i32 @eprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
