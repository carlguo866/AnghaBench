; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_general.c_blob_parsing.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_general.c_blob_parsing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"\0A*Blob Parsing*\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"1385f264afb75a56a5bec74243be9b367ba4ca08\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Blob Size: %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @blob_parsing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blob_parsing(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @git_oid_fromstr(i32* %4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @git_blob_lookup(i32** %3, i32* %7, i32* %4)
  %9 = load i32*, i32** %3, align 8
  %10 = call i64 @git_blob_rawsize(i32* %9)
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %10)
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @git_blob_rawcontent(i32* %12)
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @git_blob_free(i32* %14)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_blob_lookup(i32**, i32*, i32*) #1

declare dso_local i64 @git_blob_rawsize(i32*) #1

declare dso_local i32 @git_blob_rawcontent(i32*) #1

declare dso_local i32 @git_blob_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
