; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifs_unicode.c_cifs_strndup_from_utf16.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifs_unicode.c_cifs_strndup_from_utf16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nls_table = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@NO_MAP_UNI_RSVD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cifs_strndup_from_utf16(i8* %0, i32 %1, i32 %2, %struct.nls_table* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nls_table*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.nls_table* %3, %struct.nls_table** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %4
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to i32*
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.nls_table*, %struct.nls_table** %9, align 8
  %19 = call i32 @cifs_utf16_bytes(i32* %16, i32 %17, %struct.nls_table* %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.nls_table*, %struct.nls_table** %9, align 8
  %21 = call i64 @nls_nullsize(%struct.nls_table* %20)
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @kmalloc(i32 %26, i32 %27)
  store i8* %28, i8** %11, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %14
  store i8* null, i8** %5, align 8
  br label %60

32:                                               ; preds = %14
  %33 = load i8*, i8** %11, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.nls_table*, %struct.nls_table** %9, align 8
  %39 = load i32, i32* @NO_MAP_UNI_RSVD, align 4
  %40 = call i32 @cifs_from_utf16(i8* %33, i32* %35, i32 %36, i32 %37, %struct.nls_table* %38, i32 %39)
  br label %58

41:                                               ; preds = %4
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @strnlen(i8* %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i8* @kmalloc(i32 %47, i32 %48)
  store i8* %49, i8** %11, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %41
  store i8* null, i8** %5, align 8
  br label %60

53:                                               ; preds = %41
  %54 = load i8*, i8** %11, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @strlcpy(i8* %54, i8* %55, i32 %56)
  br label %58

58:                                               ; preds = %53, %32
  %59 = load i8*, i8** %11, align 8
  store i8* %59, i8** %5, align 8
  br label %60

60:                                               ; preds = %58, %52, %31
  %61 = load i8*, i8** %5, align 8
  ret i8* %61
}

declare dso_local i32 @cifs_utf16_bytes(i32*, i32, %struct.nls_table*) #1

declare dso_local i64 @nls_nullsize(%struct.nls_table*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @cifs_from_utf16(i8*, i32*, i32, i32, %struct.nls_table*, i32) #1

declare dso_local i32 @strnlen(i8*, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
