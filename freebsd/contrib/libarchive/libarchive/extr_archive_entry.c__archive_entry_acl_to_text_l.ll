; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry.c__archive_entry_acl_to_text_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry.c__archive_entry_acl_to_text_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive_string_conv = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_archive_entry_acl_to_text_l(%struct.archive_entry* %0, i32* %1, i32 %2, %struct.archive_string_conv* %3) #0 {
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.archive_string_conv*, align 8
  store %struct.archive_entry* %0, %struct.archive_entry** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.archive_string_conv* %3, %struct.archive_string_conv** %8, align 8
  %9 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %10 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %9, i32 0, i32 0
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.archive_string_conv*, %struct.archive_string_conv** %8, align 8
  %14 = call i8* @archive_acl_to_text_l(i32* %10, i32* %11, i32 %12, %struct.archive_string_conv* %13)
  ret i8* %14
}

declare dso_local i8* @archive_acl_to_text_l(i32*, i32*, i32, %struct.archive_string_conv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
