; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_subject_atom_parser.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_subject_atom_parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_format = type { i32 }
%struct.used_atom = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"%%(subject) does not take arguments\00", align 1
@C_SUB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_format*, %struct.used_atom*, i8*, %struct.strbuf*)* @subject_atom_parser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subject_atom_parser(%struct.ref_format* %0, %struct.used_atom* %1, i8* %2, %struct.strbuf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ref_format*, align 8
  %7 = alloca %struct.used_atom*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.strbuf*, align 8
  store %struct.ref_format* %0, %struct.ref_format** %6, align 8
  store %struct.used_atom* %1, %struct.used_atom** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.strbuf* %3, %struct.strbuf** %9, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %14 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @strbuf_addf_ret(%struct.strbuf* %13, i32 -1, i32 %14)
  store i32 %15, i32* %5, align 4
  br label %22

16:                                               ; preds = %4
  %17 = load i32, i32* @C_SUB, align 4
  %18 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %19 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 %17, i32* %21, align 4
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %16, %12
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

declare dso_local i32 @strbuf_addf_ret(%struct.strbuf*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
