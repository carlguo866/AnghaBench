; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_pidlist_resize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_pidlist_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @pidlist_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pidlist_resize(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = call i64 @is_vmalloc_addr(i8* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = trunc i64 %13 to i32
  %15 = call i8* @vmalloc(i32 %14)
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %10
  store i8* null, i8** %3, align 8
  br label %39

19:                                               ; preds = %10
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = trunc i64 %24 to i32
  %26 = call i32 @memcpy(i8* %20, i8* %21, i32 %25)
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @vfree(i8* %27)
  br label %37

29:                                               ; preds = %2
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @krealloc(i8* %30, i32 %34, i32 %35)
  store i8* %36, i8** %6, align 8
  br label %37

37:                                               ; preds = %29, %19
  %38 = load i8*, i8** %6, align 8
  store i8* %38, i8** %3, align 8
  br label %39

39:                                               ; preds = %37, %18
  %40 = load i8*, i8** %3, align 8
  ret i8* %40
}

declare dso_local i64 @is_vmalloc_addr(i8*) #1

declare dso_local i8* @vmalloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @vfree(i8*) #1

declare dso_local i8* @krealloc(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
