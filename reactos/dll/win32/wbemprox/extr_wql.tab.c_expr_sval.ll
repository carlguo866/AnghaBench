; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_wql.tab.c_expr_sval.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_wql.tab.c_expr_sval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.parser = type { i32 }
%struct.string = type { i32 }

@EXPR_SVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.expr* (%struct.parser*, %struct.string*)* @expr_sval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.expr* @expr_sval(%struct.parser* %0, %struct.string* %1) #0 {
  %3 = alloca %struct.expr*, align 8
  %4 = alloca %struct.parser*, align 8
  %5 = alloca %struct.string*, align 8
  %6 = alloca %struct.expr*, align 8
  store %struct.parser* %0, %struct.parser** %4, align 8
  store %struct.string* %1, %struct.string** %5, align 8
  %7 = load %struct.parser*, %struct.parser** %4, align 8
  %8 = call %struct.expr* @alloc_mem(%struct.parser* %7, i32 8)
  store %struct.expr* %8, %struct.expr** %6, align 8
  %9 = load %struct.expr*, %struct.expr** %6, align 8
  %10 = icmp ne %struct.expr* %9, null
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = load i32, i32* @EXPR_SVAL, align 4
  %13 = load %struct.expr*, %struct.expr** %6, align 8
  %14 = getelementptr inbounds %struct.expr, %struct.expr* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.parser*, %struct.parser** %4, align 8
  %16 = load %struct.string*, %struct.string** %5, align 8
  %17 = call i32 @get_string(%struct.parser* %15, %struct.string* %16)
  %18 = load %struct.expr*, %struct.expr** %6, align 8
  %19 = getelementptr inbounds %struct.expr, %struct.expr* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load %struct.expr*, %struct.expr** %6, align 8
  %22 = getelementptr inbounds %struct.expr, %struct.expr* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %11
  store %struct.expr* null, %struct.expr** %3, align 8
  br label %30

27:                                               ; preds = %11
  br label %28

28:                                               ; preds = %27, %2
  %29 = load %struct.expr*, %struct.expr** %6, align 8
  store %struct.expr* %29, %struct.expr** %3, align 8
  br label %30

30:                                               ; preds = %28, %26
  %31 = load %struct.expr*, %struct.expr** %3, align 8
  ret %struct.expr* %31
}

declare dso_local %struct.expr* @alloc_mem(%struct.parser*, i32) #1

declare dso_local i32 @get_string(%struct.parser*, %struct.string*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
