; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-decode.c_add_com.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-decode.c_add_com.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32 }

@cmdlist = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_list_element* @add_com(i8* %0, i32 %1, void (i8*, i32)* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca void (i8*, i32)*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store void (i8*, i32)* %2, void (i8*, i32)** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load void (i8*, i32)*, void (i8*, i32)** %7, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = call %struct.cmd_list_element* @add_cmd(i8* %9, i32 %10, void (i8*, i32)* %11, i8* %12, i32* @cmdlist)
  ret %struct.cmd_list_element* %13
}

declare dso_local %struct.cmd_list_element* @add_cmd(i8*, i32, void (i8*, i32)*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
