; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_falloc_withalloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_falloc_withalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileproc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @falloc_withalloc(i32 %0, %struct.fileproc** %1, i32* %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.fileproc**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.fileproc** %1, %struct.fileproc*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @proc_fdlock(i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.fileproc**, %struct.fileproc*** %8, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i8*, i8** %12, align 8
  %22 = call i32 @falloc_withalloc_locked(i32 %16, %struct.fileproc** %17, i32* %18, i32 %19, i32 %20, i8* %21, i32 1)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @proc_fdunlock(i32 %23)
  %25 = load i32, i32* %13, align 4
  ret i32 %25
}

declare dso_local i32 @proc_fdlock(i32) #1

declare dso_local i32 @falloc_withalloc_locked(i32, %struct.fileproc**, i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @proc_fdunlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
