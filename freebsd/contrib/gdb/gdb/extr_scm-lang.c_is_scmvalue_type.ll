; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_scm-lang.c_is_scmvalue_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_scm-lang.c_is_scmvalue_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TYPE_CODE_INT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"SCM\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_scmvalue_type(%struct.type* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %3, align 8
  %4 = load %struct.type*, %struct.type** %3, align 8
  %5 = call i64 @TYPE_CODE(%struct.type* %4)
  %6 = load i64, i64* @TYPE_CODE_INT, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load %struct.type*, %struct.type** %3, align 8
  %10 = call i64 @TYPE_NAME(%struct.type* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load %struct.type*, %struct.type** %3, align 8
  %14 = call i64 @TYPE_NAME(%struct.type* %13)
  %15 = call i64 @strcmp(i64 %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %19

18:                                               ; preds = %12, %8, %1
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %18, %17
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i64 @TYPE_NAME(%struct.type*) #1

declare dso_local i64 @strcmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
