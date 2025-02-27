; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/hypfs/extr_hypfs_vm.c_diag2fc_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/hypfs/extr_hypfs_vm.c_diag2fc_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EACCES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*, i32)* @diag2fc_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @diag2fc_store(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  br label %10

10:                                               ; preds = %44, %3
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @diag2fc(i32 0, i8* %11, i8* null)
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load i32, i32* @EACCES, align 4
  %18 = sub nsw i32 0, %17
  %19 = call i8* @ERR_PTR(i32 %18)
  store i8* %19, i8** %4, align 8
  br label %52

20:                                               ; preds = %10
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %21, %22
  %24 = call i8* @vmalloc(i32 %23)
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  %30 = call i8* @ERR_PTR(i32 %29)
  store i8* %30, i8** %4, align 8
  br label %52

31:                                               ; preds = %20
  %32 = load i32, i32* %9, align 4
  %33 = load i8*, i8** %5, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr i8, i8* %34, i64 %36
  %38 = call i64 @diag2fc(i32 %32, i8* %33, i8* %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %45

41:                                               ; preds = %31
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @vfree(i8* %42)
  br label %44

44:                                               ; preds = %41
  br i1 true, label %10, label %45

45:                                               ; preds = %44, %40
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = udiv i64 %47, 4
  %49 = trunc i64 %48 to i32
  %50 = load i32*, i32** %6, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i8*, i8** %8, align 8
  store i8* %51, i8** %4, align 8
  br label %52

52:                                               ; preds = %45, %27, %16
  %53 = load i8*, i8** %4, align 8
  ret i8* %53
}

declare dso_local i64 @diag2fc(i32, i8*, i8*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @vmalloc(i32) #1

declare dso_local i32 @vfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
