; ModuleID = '/home/carl/AnghaBench/tig/src/extr_keys.c_get_key_mapping.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_keys.c_get_key_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_mapping = type { i32 }

@key_mappings = common dso_local global %struct.key_mapping* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.key_mapping* (i8*, i64)* @get_key_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.key_mapping* @get_key_mapping(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.key_mapping*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %39, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.key_mapping*, %struct.key_mapping** @key_mappings, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.key_mapping* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %42

12:                                               ; preds = %7
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.key_mapping*, %struct.key_mapping** @key_mappings, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.key_mapping, %struct.key_mapping* %14, i64 %16
  %18 = getelementptr inbounds %struct.key_mapping, %struct.key_mapping* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @strlen(i32 %19)
  %21 = icmp eq i64 %13, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %12
  %23 = load %struct.key_mapping*, %struct.key_mapping** @key_mappings, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.key_mapping, %struct.key_mapping* %23, i64 %25
  %27 = getelementptr inbounds %struct.key_mapping, %struct.key_mapping* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @strncasecmp(i32 %28, i8* %29, i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %22
  %34 = load %struct.key_mapping*, %struct.key_mapping** @key_mappings, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.key_mapping, %struct.key_mapping* %34, i64 %36
  store %struct.key_mapping* %37, %struct.key_mapping** %3, align 8
  br label %43

38:                                               ; preds = %22, %12
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %7

42:                                               ; preds = %7
  store %struct.key_mapping* null, %struct.key_mapping** %3, align 8
  br label %43

43:                                               ; preds = %42, %33
  %44 = load %struct.key_mapping*, %struct.key_mapping** %3, align 8
  ret %struct.key_mapping* %44
}

declare dso_local i32 @ARRAY_SIZE(%struct.key_mapping*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @strncasecmp(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
