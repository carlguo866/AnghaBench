; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_hash_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_hash_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NAME_HASH_SHIFT = common dso_local global i32 0, align 4
@VALUE_HASH_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32*, i64)* @ext4_xattr_hash_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_xattr_hash_entry(i8* %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %14, %4
  %11 = load i64, i64* %6, align 8
  %12 = add i64 %11, -1
  store i64 %12, i64* %6, align 8
  %13 = icmp ne i64 %11, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %10
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @NAME_HASH_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @NAME_HASH_SHIFT, align 4
  %20 = sext i32 %19 to i64
  %21 = sub i64 32, %20
  %22 = trunc i64 %21 to i32
  %23 = ashr i32 %18, %22
  %24 = xor i32 %17, %23
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %5, align 8
  %27 = load i8, i8* %25, align 1
  %28 = sext i8 %27 to i32
  %29 = xor i32 %24, %28
  store i32 %29, i32* %9, align 4
  br label %10

30:                                               ; preds = %10
  br label %31

31:                                               ; preds = %35, %30
  %32 = load i64, i64* %8, align 8
  %33 = add i64 %32, -1
  store i64 %33, i64* %8, align 8
  %34 = icmp ne i64 %32, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %31
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @VALUE_HASH_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @VALUE_HASH_SHIFT, align 4
  %41 = sext i32 %40 to i64
  %42 = sub i64 32, %41
  %43 = trunc i64 %42 to i32
  %44 = ashr i32 %39, %43
  %45 = xor i32 %38, %44
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %7, align 8
  %48 = load i32, i32* %46, align 4
  %49 = call i32 @le32_to_cpu(i32 %48)
  %50 = xor i32 %45, %49
  store i32 %50, i32* %9, align 4
  br label %31

51:                                               ; preds = %31
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @cpu_to_le32(i32 %52)
  ret i32 %53
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
