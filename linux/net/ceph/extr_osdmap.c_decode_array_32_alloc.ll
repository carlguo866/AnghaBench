; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_decode_array_32_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_decode_array_32_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@e_inval = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i8*, i32*)* @decode_array_32_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @decode_array_32_alloc(i8** %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %12 = load i8**, i8*** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @e_inval, align 4
  %16 = call i32 @ceph_decode_32_safe(i8** %12, i8* %13, i32 %14, i32 %15)
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %52

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @GFP_NOIO, align 4
  %22 = call i32* @kmalloc_array(i32 %20, i32 4, i32 %21)
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %10, align 4
  br label %59

28:                                               ; preds = %19
  %29 = load i8**, i8*** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @e_inval, align 4
  %36 = call i32 @ceph_decode_need(i8** %29, i8* %30, i32 %34, i32 %35)
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %48, %28
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load i8**, i8*** %5, align 8
  %43 = call i32 @ceph_decode_32(i8** %42)
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %43, i32* %47, align 4
  br label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  br label %37

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %51, %3
  %53 = load i32, i32* %9, align 4
  %54 = load i32*, i32** %7, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32*, i32** %8, align 8
  store i32* %55, i32** %4, align 8
  br label %64

56:                                               ; No predecessors!
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %56, %25
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @kfree(i32* %60)
  %62 = load i32, i32* %10, align 4
  %63 = call i32* @ERR_PTR(i32 %62)
  store i32* %63, i32** %4, align 8
  br label %64

64:                                               ; preds = %59, %52
  %65 = load i32*, i32** %4, align 8
  ret i32* %65
}

declare dso_local i32 @ceph_decode_32_safe(i8**, i8*, i32, i32) #1

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @ceph_decode_need(i8**, i8*, i32, i32) #1

declare dso_local i32 @ceph_decode_32(i8**) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
