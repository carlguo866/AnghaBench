; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccpp.c_free_defines.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccpp.c_free_defines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32* }

@define_stack = common dso_local global %struct.TYPE_6__* null, align 8
@TOK_IDENT = common dso_local global i32 0, align 4
@tok_ident = common dso_local global i32 0, align 4
@table_ident = common dso_local global %struct.TYPE_7__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_defines(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @define_stack, align 8
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %3, align 8
  br label %7

7:                                                ; preds = %44, %1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = icmp ne %struct.TYPE_6__* %8, %9
  br i1 %10, label %11, label %48

11:                                               ; preds = %7
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %4, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %11
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @tok_str_free(i64 %22)
  br label %24

24:                                               ; preds = %19, %11
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @TOK_IDENT, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @tok_ident, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @table_ident, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @TOK_IDENT, align 4
  %39 = sub nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %36, i64 %40
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %35, %31, %24
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = call i32 @sym_free(%struct.TYPE_6__* %45)
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %3, align 8
  br label %7

48:                                               ; preds = %7
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  store %struct.TYPE_6__* %49, %struct.TYPE_6__** @define_stack, align 8
  ret void
}

declare dso_local i32 @tok_str_free(i64) #1

declare dso_local i32 @sym_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
