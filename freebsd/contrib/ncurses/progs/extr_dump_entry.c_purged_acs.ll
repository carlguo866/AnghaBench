; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_dump_entry.c_purged_acs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_dump_entry.c_purged_acs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@acs_chars = common dso_local global i32 0, align 4
@ABSENT_STRING = common dso_local global i8* null, align 8
@enter_alt_charset_mode = common dso_local global i8* null, align 8
@exit_alt_charset_mode = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"# (rmacs/smacs removed for consistency)\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @purged_acs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @purged_acs(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32, i32* @FALSE, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* @acs_chars, align 4
  %6 = call i64 @VALID_STRING(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load i32, i32* @acs_chars, align 4
  %10 = call i32 @one_one_mapping(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = load i8*, i8** @ABSENT_STRING, align 8
  store i8* %13, i8** @enter_alt_charset_mode, align 8
  %14 = load i8*, i8** @ABSENT_STRING, align 8
  store i8* %14, i8** @exit_alt_charset_mode, align 8
  %15 = call i32 @SHOW_WHY(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %12, %8
  %17 = load i32, i32* @TRUE, align 4
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %16, %1
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i64 @VALID_STRING(i32) #1

declare dso_local i32 @one_one_mapping(i32) #1

declare dso_local i32 @SHOW_WHY(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
