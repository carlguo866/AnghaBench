; ModuleID = '/home/carl/AnghaBench/linux/usr/extr_gen_init_cpio.c_cpio_mknod.c'
source_filename = "/home/carl/AnghaBench/linux/usr/extr_gen_init_cpio.c_cpio_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_IFBLK = common dso_local global i32 0, align 4
@S_IFCHR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"%s%08X%08X%08lX%08lX%08X%08lX%08X%08X%08X%08X%08X%08X%08X\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"070701\00", align 1
@ino = common dso_local global i32 0, align 4
@default_mtime = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64, i64, i8, i32, i32)* @cpio_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpio_mknod(i8* %0, i32 %1, i64 %2, i64 %3, i8 signext %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [256 x i8], align 16
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i8 %4, i8* %12, align 1
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load i8, i8* %12, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 98
  br i1 %18, label %19, label %23

19:                                               ; preds = %7
  %20 = load i32, i32* @S_IFBLK, align 4
  %21 = load i32, i32* %9, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %9, align 4
  br label %27

23:                                               ; preds = %7
  %24 = load i32, i32* @S_IFCHR, align 4
  %25 = load i32, i32* %9, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 47
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %8, align 8
  br label %36

36:                                               ; preds = %33, %27
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %38 = load i32, i32* @ino, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @ino, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* @default_mtime, align 8
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %14, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = call i64 @strlen(i8* %46)
  %48 = trunc i64 %47 to i32
  %49 = add i32 %48, 1
  %50 = call i32 @sprintf(i8* %37, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %40, i64 %41, i64 %42, i32 1, i64 %43, i32 0, i32 3, i32 1, i32 %44, i32 %45, i32 %49, i32 0)
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %52 = call i32 @push_hdr(i8* %51)
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @push_rest(i8* %53)
  ret i32 0
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32, i32, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @push_hdr(i8*) #1

declare dso_local i32 @push_rest(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
