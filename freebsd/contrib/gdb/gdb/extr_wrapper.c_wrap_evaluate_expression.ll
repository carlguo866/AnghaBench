; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wrapper.c_wrap_evaluate_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wrapper.c_wrap_evaluate_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdb_wrapper_arguments = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i8* }
%struct.expression = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @wrap_evaluate_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wrap_evaluate_expression(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.gdb_wrapper_arguments*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.gdb_wrapper_arguments*
  store %struct.gdb_wrapper_arguments* %5, %struct.gdb_wrapper_arguments** %3, align 8
  %6 = load %struct.gdb_wrapper_arguments*, %struct.gdb_wrapper_arguments** %3, align 8
  %7 = getelementptr inbounds %struct.gdb_wrapper_arguments, %struct.gdb_wrapper_arguments* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i64 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.expression*
  %13 = call i64 @evaluate_expression(%struct.expression* %12)
  %14 = inttoptr i64 %13 to i8*
  %15 = load %struct.gdb_wrapper_arguments*, %struct.gdb_wrapper_arguments** %3, align 8
  %16 = getelementptr inbounds %struct.gdb_wrapper_arguments, %struct.gdb_wrapper_arguments* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i8* %14, i8** %17, align 8
  ret i32 1
}

declare dso_local i64 @evaluate_expression(%struct.expression*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
