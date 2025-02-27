; ModuleID = '/home/carl/AnghaBench/systemd/src/fstab-generator/extr_fstab-generator.c_determine_root.c'
source_filename = "/home/carl/AnghaBench/systemd/src/fstab-generator/extr_fstab-generator.c_determine_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_root_what = common dso_local global i64 0, align 8
@arg_root_hash = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"/dev/mapper/root\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Using verity root device %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @determine_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @determine_root() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @arg_root_what, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %18

5:                                                ; preds = %0
  %6 = load i32, i32* @arg_root_hash, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  store i32 0, i32* %1, align 4
  br label %18

9:                                                ; preds = %5
  %10 = call i64 @strdup(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i64 %10, i64* @arg_root_what, align 8
  %11 = load i64, i64* @arg_root_what, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = call i32 (...) @log_oom()
  store i32 %14, i32* %1, align 4
  br label %18

15:                                               ; preds = %9
  %16 = load i64, i64* @arg_root_what, align 8
  %17 = call i32 @log_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %16)
  store i32 1, i32* %1, align 4
  br label %18

18:                                               ; preds = %15, %13, %8, %4
  %19 = load i32, i32* %1, align 4
  ret i32 %19
}

declare dso_local i64 @strdup(i8*) #1

declare dso_local i32 @log_oom(...) #1

declare dso_local i32 @log_info(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
