; ModuleID = '/home/carl/AnghaBench/openssl/crypto/store/extr_loader_file.c_file_get_pem_pass.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/store/extr_loader_file.c_file_get_pem_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pem_pass_data = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i8*)* @file_get_pem_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_get_pem_pass(i8* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.pem_pass_data*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = bitcast i8* %11 to %struct.pem_pass_data*
  store %struct.pem_pass_data* %12, %struct.pem_pass_data** %9, align 8
  %13 = load %struct.pem_pass_data*, %struct.pem_pass_data** %9, align 8
  %14 = getelementptr inbounds %struct.pem_pass_data, %struct.pem_pass_data* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.pem_pass_data*, %struct.pem_pass_data** %9, align 8
  %19 = getelementptr inbounds %struct.pem_pass_data, %struct.pem_pass_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.pem_pass_data*, %struct.pem_pass_data** %9, align 8
  %22 = getelementptr inbounds %struct.pem_pass_data, %struct.pem_pass_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @file_get_pass(i32 %15, i8* %16, i32 %17, i32 %20, i32 %23)
  store i8* %24, i8** %10, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  br label %31

28:                                               ; preds = %4
  %29 = load i8*, i8** %10, align 8
  %30 = call i32 @strlen(i8* %29)
  br label %31

31:                                               ; preds = %28, %27
  %32 = phi i32 [ 0, %27 ], [ %30, %28 ]
  ret i32 %32
}

declare dso_local i8* @file_get_pass(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
