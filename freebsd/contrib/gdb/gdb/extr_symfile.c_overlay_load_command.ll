; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_overlay_load_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_overlay_load_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [57 x i8] c"This target does not know how to read its overlay state.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @overlay_load_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @overlay_load_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  br i1 true, label %5, label %7

5:                                                ; preds = %2
  %6 = call i32 @target_overlay_update(i32* null)
  br label %9

7:                                                ; preds = %2
  %8 = call i32 @error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %5
  ret void
}

declare dso_local i32 @target_overlay_update(i32*) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
