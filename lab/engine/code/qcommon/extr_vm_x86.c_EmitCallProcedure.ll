; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_x86.c_EmitCallProcedure.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_x86.c_EmitCallProcedure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"8B 04 9F\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"85 C0\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"7C\00", align 1
@compiledOfs = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"81 F8\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"73\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"FF 14 85\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"C3\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EmitCallProcedure(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32 @EmitString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @STACK_POP(i32 1)
  %10 = call i32 @EmitString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 @EmitString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %12 = load i32, i32* @compiledOfs, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @compiledOfs, align 4
  store i32 %12, i32* %5, align 4
  %14 = call i32 @EmitString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @Emit4(i64 %17)
  %19 = call i32 @EmitString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %20 = load i32, i32* @compiledOfs, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @compiledOfs, align 4
  store i32 %20, i32* %6, align 4
  %22 = call i32 @EmitString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @Emit4(i64 %25)
  %27 = call i32 @EmitString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 @EmitString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @SET_JMPOFS(i32 %29)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @EmitCallErrJump(%struct.TYPE_5__* %31, i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @SET_JMPOFS(i32 %34)
  %36 = load i32, i32* @compiledOfs, align 4
  store i32 %36, i32* %7, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @EmitCallRel(%struct.TYPE_5__* %37, i32 %38)
  %40 = call i32 @STACK_PUSH(i32 1)
  %41 = call i32 @EmitString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local i32 @EmitString(i8*) #1

declare dso_local i32 @STACK_POP(i32) #1

declare dso_local i32 @Emit4(i64) #1

declare dso_local i32 @SET_JMPOFS(i32) #1

declare dso_local i32 @EmitCallErrJump(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @EmitCallRel(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @STACK_PUSH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
