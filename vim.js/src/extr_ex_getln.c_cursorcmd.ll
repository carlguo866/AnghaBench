; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_ex_getln.c_cursorcmd.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_ex_getln.c_cursorcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@cmd_silent = common dso_local global i64 0, align 8
@cmdline_row = common dso_local global i64 0, align 8
@ccline = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@Columns = common dso_local global i32 0, align 4
@msg_row = common dso_local global i64 0, align 8
@msg_col = common dso_local global i32 0, align 4
@Rows = common dso_local global i64 0, align 8
@cmdmsg_rl = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cursorcmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cursorcmd() #0 {
  %1 = load i64, i64* @cmd_silent, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %24

4:                                                ; preds = %0
  %5 = load i64, i64* @cmdline_row, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccline, i32 0, i32 0), align 4
  %7 = load i32, i32* @Columns, align 4
  %8 = sdiv i32 %6, %7
  %9 = sext i32 %8 to i64
  %10 = add nsw i64 %5, %9
  store i64 %10, i64* @msg_row, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccline, i32 0, i32 0), align 4
  %12 = load i32, i32* @Columns, align 4
  %13 = srem i32 %11, %12
  store i32 %13, i32* @msg_col, align 4
  %14 = load i64, i64* @msg_row, align 8
  %15 = load i64, i64* @Rows, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i64, i64* @Rows, align 8
  %19 = sub nsw i64 %18, 1
  store i64 %19, i64* @msg_row, align 8
  br label %20

20:                                               ; preds = %17, %4
  %21 = load i64, i64* @msg_row, align 8
  %22 = load i32, i32* @msg_col, align 4
  %23 = call i32 @windgoto(i64 %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %3
  ret void
}

declare dso_local i32 @windgoto(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
