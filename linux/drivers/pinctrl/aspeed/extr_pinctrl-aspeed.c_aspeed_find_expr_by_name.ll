; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/aspeed/extr_pinctrl-aspeed.c_aspeed_find_expr_by_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/aspeed/extr_pinctrl-aspeed.c_aspeed_find_expr_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_sig_expr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aspeed_sig_expr* (%struct.aspeed_sig_expr**, i8*)* @aspeed_find_expr_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aspeed_sig_expr* @aspeed_find_expr_by_name(%struct.aspeed_sig_expr** %0, i8* %1) #0 {
  %3 = alloca %struct.aspeed_sig_expr*, align 8
  %4 = alloca %struct.aspeed_sig_expr**, align 8
  %5 = alloca i8*, align 8
  store %struct.aspeed_sig_expr** %0, %struct.aspeed_sig_expr*** %4, align 8
  store i8* %1, i8** %5, align 8
  br label %6

6:                                                ; preds = %21, %2
  %7 = load %struct.aspeed_sig_expr**, %struct.aspeed_sig_expr*** %4, align 8
  %8 = load %struct.aspeed_sig_expr*, %struct.aspeed_sig_expr** %7, align 8
  %9 = icmp ne %struct.aspeed_sig_expr* %8, null
  br i1 %9, label %10, label %24

10:                                               ; preds = %6
  %11 = load %struct.aspeed_sig_expr**, %struct.aspeed_sig_expr*** %4, align 8
  %12 = load %struct.aspeed_sig_expr*, %struct.aspeed_sig_expr** %11, align 8
  %13 = getelementptr inbounds %struct.aspeed_sig_expr, %struct.aspeed_sig_expr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @strcmp(i32 %14, i8* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load %struct.aspeed_sig_expr**, %struct.aspeed_sig_expr*** %4, align 8
  %20 = load %struct.aspeed_sig_expr*, %struct.aspeed_sig_expr** %19, align 8
  store %struct.aspeed_sig_expr* %20, %struct.aspeed_sig_expr** %3, align 8
  br label %25

21:                                               ; preds = %10
  %22 = load %struct.aspeed_sig_expr**, %struct.aspeed_sig_expr*** %4, align 8
  %23 = getelementptr inbounds %struct.aspeed_sig_expr*, %struct.aspeed_sig_expr** %22, i32 1
  store %struct.aspeed_sig_expr** %23, %struct.aspeed_sig_expr*** %4, align 8
  br label %6

24:                                               ; preds = %6
  store %struct.aspeed_sig_expr* null, %struct.aspeed_sig_expr** %3, align 8
  br label %25

25:                                               ; preds = %24, %18
  %26 = load %struct.aspeed_sig_expr*, %struct.aspeed_sig_expr** %3, align 8
  ret %struct.aspeed_sig_expr* %26
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
