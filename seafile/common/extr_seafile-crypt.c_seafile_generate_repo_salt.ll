; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_seafile-crypt.c_seafile_generate_repo_salt.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_seafile-crypt.c_seafile_generate_repo_salt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [46 x i8] c"Failed to generate salt for repo encryption.\0A\00", align 1
@GNUTLS_RND_RANDOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seafile_generate_repo_salt(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [32 x i8], align 16
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %7 = call i32 @RAND_bytes(i8* %6, i32 32)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @seaf_warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %16

12:                                               ; preds = %1
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @rawdata_to_hex(i8* %13, i8* %14, i32 32)
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %12, %10
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i32 @RAND_bytes(i8*, i32) #1

declare dso_local i32 @seaf_warning(i8*) #1

declare dso_local i32 @rawdata_to_hex(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
