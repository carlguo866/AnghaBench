; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_dump_uses.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_dump_uses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivopts_data = type { i32 }
%struct.iv_use = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_uses(i32* %0, %struct.ivopts_data* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ivopts_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iv_use*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.ivopts_data* %1, %struct.ivopts_data** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %21, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.ivopts_data*, %struct.ivopts_data** %4, align 8
  %10 = call i32 @n_iv_uses(%struct.ivopts_data* %9)
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %7
  %13 = load %struct.ivopts_data*, %struct.ivopts_data** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.iv_use* @iv_use(%struct.ivopts_data* %13, i32 %14)
  store %struct.iv_use* %15, %struct.iv_use** %6, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = load %struct.iv_use*, %struct.iv_use** %6, align 8
  %18 = call i32 @dump_use(i32* %16, %struct.iv_use* %17)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @fprintf(i32* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %12
  %22 = load i32, i32* %5, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %7

24:                                               ; preds = %7
  ret void
}

declare dso_local i32 @n_iv_uses(%struct.ivopts_data*) #1

declare dso_local %struct.iv_use* @iv_use(%struct.ivopts_data*, i32) #1

declare dso_local i32 @dump_use(i32*, %struct.iv_use*) #1

declare dso_local i32 @fprintf(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
