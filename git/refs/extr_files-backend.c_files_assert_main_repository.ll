; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_assert_main_repository.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_assert_main_repository.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.files_ref_store = type { i32 }

@REF_STORE_MAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"operation %s only allowed for main ref store\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.files_ref_store*, i8*)* @files_assert_main_repository to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @files_assert_main_repository(%struct.files_ref_store* %0, i8* %1) #0 {
  %3 = alloca %struct.files_ref_store*, align 8
  %4 = alloca i8*, align 8
  store %struct.files_ref_store* %0, %struct.files_ref_store** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.files_ref_store*, %struct.files_ref_store** %3, align 8
  %6 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @REF_STORE_MAIN, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %15

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @BUG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %13)
  br label %15

15:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @BUG(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
