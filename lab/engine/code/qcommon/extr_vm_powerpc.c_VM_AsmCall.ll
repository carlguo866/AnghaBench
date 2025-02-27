; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_powerpc.c_VM_AsmCall.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_powerpc.c_VM_AsmCall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 (i64*)*, i64 }

@currentVM = common dso_local global %struct.TYPE_3__* null, align 8
@MAX_VMSYSCALL_ARGS = common dso_local global i32 0, align 4
@time_outside_vm = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32)* @VM_AsmCall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @VM_AsmCall(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currentVM, align 8
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sub nsw i32 %12, 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currentVM, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @MAX_VMSYSCALL_ARGS, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i64, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sub nsw i32 -1, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %19, i64 0
  store i64 %22, i64* %23, align 16
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currentVM, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = getelementptr inbounds i32, i32* %30, i64 4
  store i32* %31, i32** %10, align 8
  store i64 1, i64* %6, align 8
  br label %32

32:                                               ; preds = %44, %2
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @ARRAY_LEN(i64* %19)
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load i32*, i32** %10, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds i64, i64* %19, i64 %42
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %36
  %45 = load i64, i64* %6, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %6, align 8
  br label %32

47:                                               ; preds = %32
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currentVM, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i64 (i64*)*, i64 (i64*)** %49, align 8
  %51 = call i64 %50(i64* %19)
  store i64 %51, i64* %7, align 8
  %52 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %52)
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  store %struct.TYPE_3__* %53, %struct.TYPE_3__** @currentVM, align 8
  %54 = load i64, i64* %7, align 8
  ret i64 %54
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ARRAY_LEN(i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
