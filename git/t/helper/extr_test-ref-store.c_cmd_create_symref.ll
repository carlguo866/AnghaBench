; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-ref-store.c_cmd_create_symref.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-ref-store.c_cmd_create_symref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_store = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"refname\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_store*, i8**)* @cmd_create_symref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_create_symref(%struct.ref_store* %0, i8** %1) #0 {
  %3 = alloca %struct.ref_store*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.ref_store* %0, %struct.ref_store** %3, align 8
  store i8** %1, i8*** %4, align 8
  %8 = load i8**, i8*** %4, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i32 1
  store i8** %9, i8*** %4, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = ptrtoint i8* %10 to i32
  %12 = call i8* @notnull(i32 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %5, align 8
  %13 = load i8**, i8*** %4, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i32 1
  store i8** %14, i8*** %4, align 8
  %15 = load i8*, i8** %13, align 8
  %16 = ptrtoint i8* %15 to i32
  %17 = call i8* @notnull(i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i8* %17, i8** %6, align 8
  %18 = load i8**, i8*** %4, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i32 1
  store i8** %19, i8*** %4, align 8
  %20 = load i8*, i8** %18, align 8
  store i8* %20, i8** %7, align 8
  %21 = load %struct.ref_store*, %struct.ref_store** %3, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @refs_create_symref(%struct.ref_store* %21, i8* %22, i8* %23, i8* %24)
  ret i32 %25
}

declare dso_local i8* @notnull(i32, i8*) #1

declare dso_local i32 @refs_create_symref(%struct.ref_store*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
