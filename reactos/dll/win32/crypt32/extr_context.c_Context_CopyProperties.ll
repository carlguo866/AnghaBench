; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_context.c_Context_CopyProperties.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_context.c_Context_CopyProperties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Context_CopyProperties(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call %struct.TYPE_2__* @context_from_ptr(i8* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call %struct.TYPE_2__* @context_from_ptr(i8* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br label %20

20:                                               ; preds = %17, %2
  %21 = phi i1 [ false, %2 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32*, i32** %5, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @ContextPropertyList_Copy(i32* %24, i32* %25)
  ret void
}

declare dso_local %struct.TYPE_2__* @context_from_ptr(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ContextPropertyList_Copy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
